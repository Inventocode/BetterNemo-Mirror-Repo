.class public Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;
.super Ljava/lang/Object;
.source "BcmCloudWorksHistory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bcm_url:Ljava/lang/String;

.field private bcm_version:Ljava/lang/String;

.field private created_at:I

.field private n_blocks:I

.field private n_roles:I

.field private work_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcm_url()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->created_at:I

    return v0
.end method

.method public getN_blocks()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->n_blocks:I

    return v0
.end method

.method public getN_roles()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->n_roles:I

    return v0
.end method

.method public getWork_id()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->work_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBcm_url(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->bcm_url:Ljava/lang/String;

    return-void
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->created_at:I

    return-void
.end method

.method public setN_blocks(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->n_blocks:I

    return-void
.end method

.method public setN_roles(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->n_roles:I

    return-void
.end method

.method public setWork_id(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->work_id:Ljava/lang/String;

    return-void
.end method
