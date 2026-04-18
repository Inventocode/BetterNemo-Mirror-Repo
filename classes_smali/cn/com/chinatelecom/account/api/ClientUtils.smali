.class public final Lcn/com/chinatelecom/account/api/ClientUtils;
.super Ljava/lang/Object;


# static fields
.field private static sdkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 2

    sget v0, Lcn/com/chinatelecom/account/api/ClientUtils;->sdkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "SDK-HY-v3.8.7"

    return-object v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const-string v0, "SDK-BIOM-v3.8.7"

    return-object v0

    :cond_e
    const-string v0, "SDK-API-v3.8.7"

    return-object v0
.end method
