.class Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil$HandlerProxy;
.super Landroid/os/Handler;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerProxy"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil$HandlerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
