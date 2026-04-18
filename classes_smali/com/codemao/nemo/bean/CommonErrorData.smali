.class public Lcom/codemao/nemo/bean/CommonErrorData;
.super Ljava/lang/Object;
.source "CommonErrorData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CommonErrorBody;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/codemao/nemo/bean/CommonErrorM;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorData;->b:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/codemao/nemo/bean/CommonErrorM;

    const/4 v1, 0x1

    const-string v2, "nemo"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/CommonErrorM;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorData;->m:Lcom/codemao/nemo/bean/CommonErrorM;

    return-void
.end method


# virtual methods
.method public getB()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CommonErrorBody;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorData;->b:Ljava/util/List;

    return-object v0
.end method

.method public getM()Lcom/codemao/nemo/bean/CommonErrorM;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorData;->m:Lcom/codemao/nemo/bean/CommonErrorM;

    return-object v0
.end method

.method public setB(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CommonErrorBody;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorData;->b:Ljava/util/List;

    return-void
.end method

.method public setM(Lcom/codemao/nemo/bean/CommonErrorM;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorData;->m:Lcom/codemao/nemo/bean/CommonErrorM;

    return-void
.end method
