from math import sqrt, pow
import operator


# 基于用户的协同过滤推荐算法
# 算法参考：https://blog.csdn.net/net19880504/article/details/137772131

class UserCf:

    # 获得初始化数据
    def __init__(self, data):
        self.data = data

    # 计算两个用户的皮尔逊相关系数
    def pearson(self, user1, user2):
        sumXY = 0.0
        n = 1
        sumX = 0.1
        sumY = 0.1
        sumX2 = 0.1
        sumY2 = 0.1
        try:
            for movie1, score1 in user1.items():
                if movie1 in user2.keys():  # 计算公共的thing的评分
                    n += 1
                    sumXY += score1 * user2[movie1]
                    sumX += score1
                    sumY += user2[movie1]
                    sumX2 += pow(score1, 2)
                    sumY2 += pow(user2[movie1], 2)

            molecule = sumXY - (sumX * sumY) / n
            denominator = sqrt((sumX2 - pow(sumX, 2) / n) * (sumY2 - pow(sumY, 2) / n))
            r = molecule / denominator
        except Exception as e:
            print("异常信息:", str(e))
            return None
        return r

    # 计算与当前用户的距离，获得最临近的用户
    def nearstUser(self, username, n=1):
        distances = {}  # 用户，相似度
        for otherUser, items in self.data.items():  # 遍历整个数据集
            if otherUser not in username:  # 非当前的用户
                distance = self.pearson(self.data[username], self.data[otherUser])  # 计算两个用户的相似度
                distances[otherUser] = distance
        sortedDistance = sorted(distances.items(), key=operator.itemgetter(1), reverse=True)  # 最相似的N个用户
        # print("排序后的用户为：", sortedDistance)
        return sortedDistance[:n]

    # 给用户推荐物品（比如电影）
    def recomand(self, username, n=1):
        recommand = []  # 待推荐的物品
        for user, score in dict(self.nearstUser(username, n)).items():  # 最相近的n个用户
            # print("推荐的用户：", (user, score))
            for movies, scores in self.data[user].items():  # 推荐的用户的物品列表
                if movies not in self.data[username].keys():  # 当前username没有看过
                    # print("%s为该用户推荐的物品：%s" % (user, movies))
                    if movies not in recommand:
                        recommand.append(movies)

        return recommand
