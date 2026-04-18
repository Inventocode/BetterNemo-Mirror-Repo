.class public Lcom/codemao/nemo/bean/RecommendUserList;
.super Ljava/lang/Object;
.source "RecommendUserList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private userInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/RecommendUserList;->userInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUserInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendUserList;->userInfos:Ljava/util/List;

    return-object v0
.end method

.method public setUserInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendUserList;->userInfos:Ljava/util/List;

    return-void
.end method
