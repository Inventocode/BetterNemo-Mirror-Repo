.class public Lcom/chuanglan/shanyan_sdk/b/a;
.super Lcom/chuanglan/shanyan_sdk/b/f;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "com.huawei.hwid"

    const/4 v1, 0x0

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
