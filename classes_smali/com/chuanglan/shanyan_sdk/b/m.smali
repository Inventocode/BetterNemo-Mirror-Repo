.class public Lcom/chuanglan/shanyan_sdk/b/m;
.super Lcom/chuanglan/shanyan_sdk/b/f;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c_(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->c_(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
