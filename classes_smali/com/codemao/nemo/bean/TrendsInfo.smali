.class public Lcom/codemao/nemo/bean/TrendsInfo;
.super Ljava/lang/Object;
.source "TrendsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dynamic_id:J

.field private dynamic_info:Lcom/codemao/nemo/bean/TrendsDetailInfo;

.field private dynamic_status:I

.field private dynamic_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamic_id()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_id:J

    return-wide v0
.end method

.method public getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_info:Lcom/codemao/nemo/bean/TrendsDetailInfo;

    return-object v0
.end method

.method public getDynamic_status()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_status:I

    return v0
.end method

.method public getDynamic_type()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_type:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamic_id(J)V
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_id:J

    return-void
.end method

.method public setDynamic_info(Lcom/codemao/nemo/bean/TrendsDetailInfo;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_info:Lcom/codemao/nemo/bean/TrendsDetailInfo;

    return-void
.end method

.method public setDynamic_status(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_status:I

    return-void
.end method

.method public setDynamic_type(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsInfo;->dynamic_type:Ljava/lang/String;

    return-void
.end method
