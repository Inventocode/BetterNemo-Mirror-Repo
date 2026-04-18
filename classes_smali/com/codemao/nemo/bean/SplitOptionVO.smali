.class public Lcom/codemao/nemo/bean/SplitOptionVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "SplitOptionVO.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/SplitOptionVO;->name:Ljava/lang/String;

    return-void
.end method
