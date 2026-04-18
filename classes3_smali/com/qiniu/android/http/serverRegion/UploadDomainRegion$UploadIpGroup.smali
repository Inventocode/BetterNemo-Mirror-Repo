.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadIpGroup"
.end annotation


# instance fields
.field private addressIndex:I

.field private final addressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 384
    iput p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    .line 391
    iput-object p2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getNetworkAddress()Lcom/qiniu/android/http/dns/IDnsNetworkAddress;
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_34

    .line 398
    :cond_b
    iget v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_29

    .line 399
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    .line 401
    :cond_29
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    return-object v0

    :cond_34
    :goto_34
    const/4 v0, 0x0

    return-object v0
.end method
