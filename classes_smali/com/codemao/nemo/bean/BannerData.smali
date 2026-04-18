.class public Lcom/codemao/nemo/bean/BannerData;
.super Ljava/lang/Object;
.source "BannerData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private created_at:J

.field private id:J

.field private ordinal:I

.field private preview_url:Ljava/lang/String;

.field private target_url:Ljava/lang/String;

.field private updated_at:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated_at()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BannerData;->created_at:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BannerData;->id:J

    return-wide v0
.end method

.method public getOrdinal()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/nemo/bean/BannerData;->ordinal:I

    return v0
.end method

.method public getPreview_url()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/BannerData;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_url()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/BannerData;->target_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BannerData;->updated_at:J

    return-wide v0
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BannerData;->created_at:J

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BannerData;->id:J

    return-void
.end method

.method public setOrdinal(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/codemao/nemo/bean/BannerData;->ordinal:I

    return-void
.end method

.method public setPreview_url(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/BannerData;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public setTarget_url(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/bean/BannerData;->target_url:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BannerData;->updated_at:J

    return-void
.end method
