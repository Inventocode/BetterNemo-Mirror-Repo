.class public Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;
.super Ljava/lang/Object;
.source "BindUrlWorkIdInfo.java"


# instance fields
.field private business_id:Ljava/lang/String;

.field private url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->business_id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->url_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBusiness_id()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->business_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->url_list:Ljava/util/List;

    return-object v0
.end method

.method public setBusiness_id(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->business_id:Ljava/lang/String;

    return-void
.end method

.method public setUrl_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/BindUrlWorkIdInfo;->url_list:Ljava/util/List;

    return-void
.end method
