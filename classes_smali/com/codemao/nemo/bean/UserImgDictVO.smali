.class public Lcom/codemao/nemo/bean/UserImgDictVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "UserImgDictVO.java"


# instance fields
.field private user_img_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/ImgDictVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/UserImgDictVO;->user_img_dict:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/nemo/bean/UserImgDictVO;
    .registers 4

    .line 21
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/bean/UserImgDictVO;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserImgDictVO;

    return-object v0
.end method

.method public getUser_img_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/ImgDictVO;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserImgDictVO;->user_img_dict:Ljava/util/Map;

    return-object v0
.end method

.method public setUser_img_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/ImgDictVO;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserImgDictVO;->user_img_dict:Ljava/util/Map;

    return-void
.end method
