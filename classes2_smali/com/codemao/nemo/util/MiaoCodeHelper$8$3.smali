.class Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper$8;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showLater()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$900(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    return-void
.end method
