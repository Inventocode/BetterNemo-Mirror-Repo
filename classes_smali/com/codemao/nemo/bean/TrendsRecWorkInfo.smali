.class public Lcom/codemao/nemo/bean/TrendsRecWorkInfo;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "TrendsRecWorkInfo.java"


# instance fields
.field private n_likes:J

.field private n_views:J

.field private preview:Ljava/lang/String;

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getN_likes()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->n_likes:J

    return-wide v0
.end method

.method public getN_views()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->n_views:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_id()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setN_likes(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->n_likes:J

    return-void
.end method

.method public setN_views(J)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->n_views:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
