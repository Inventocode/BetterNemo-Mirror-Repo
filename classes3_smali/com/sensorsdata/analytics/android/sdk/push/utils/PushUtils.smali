.class public Lcom/sensorsdata/analytics/android/sdk/push/utils/PushUtils;
.super Ljava/lang/Object;
.source "PushUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJPushSDKName(B)Ljava/lang/String;
    .registers 2

    const-string v0, "Jpush"

    packed-switch p0, :pswitch_data_1c

    :pswitch_5  #0x7
    goto :goto_1a

    :pswitch_6  #0x8
    const-string v0, "fcm"

    goto :goto_1a

    :pswitch_9  #0x6
    const-string v0, "Asus"

    goto :goto_1a

    :pswitch_c  #0x5
    const-string v0, "vivo"

    goto :goto_1a

    :pswitch_f  #0x4
    const-string v0, "OPPO"

    goto :goto_1a

    :pswitch_12  #0x3
    const-string v0, "Meizu"

    goto :goto_1a

    :pswitch_15  #0x2
    const-string v0, "HUAWEI"

    goto :goto_1a

    :pswitch_18  #0x1
    const-string v0, "Xiaomi"

    :goto_1a
    :pswitch_1a  #0x0
    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_18  #00000001
        :pswitch_15  #00000002
        :pswitch_12  #00000003
        :pswitch_f  #00000004
        :pswitch_c  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
