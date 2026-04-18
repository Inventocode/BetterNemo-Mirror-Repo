.class Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper$3;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/GetMiaoCode;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$3;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    iget-object v1, p1, Lcom/codemao/nemo/bean/GetMiaoCode;->data:Lcom/codemao/nemo/bean/MiaoCode;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$102(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/bean/MiaoCode;)Lcom/codemao/nemo/bean/MiaoCode;

    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 119
    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$3$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$3;

    iget-object p1, p1, Lcom/codemao/nemo/util/MiaoCodeHelper$3;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
