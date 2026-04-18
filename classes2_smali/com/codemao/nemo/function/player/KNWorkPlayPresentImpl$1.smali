.class Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;
.super Ljava/lang/Object;
.source "KNWorkPlayPresentImpl.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 p1, 0x3

    if-eq v0, p1, :cond_c

    goto :goto_3f

    .line 85
    :cond_c
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->onPhoneShake()V

    goto :goto_3f

    .line 82
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setRecordPermission(Z)V

    goto :goto_3f

    .line 78
    :cond_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    move-result-object v0

    const-string v1, "decibel"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setVolume(D)V

    :goto_3f
    return-void
.end method
