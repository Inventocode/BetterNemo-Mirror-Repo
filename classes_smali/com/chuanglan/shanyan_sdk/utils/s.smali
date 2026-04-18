.class public Lcom/chuanglan/shanyan_sdk/utils/s;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "ShanYCore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "loadLibrary  Exception_e="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method

.method public static native n(Ljava/lang/Object;)Z
.end method
