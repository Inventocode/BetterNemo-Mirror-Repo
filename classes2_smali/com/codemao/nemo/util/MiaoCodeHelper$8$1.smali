.class Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;


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

    .line 244
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$402(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)Z

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1000(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    return-void
.end method

.method public open()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    .line 266
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$900(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    return-void
.end method

.method public openKn(Ljava/lang/String;)V
    .registers 9

    const-string v0, "miaocode"

    const-string v1, "miaocodeHelper,openKn"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1100(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 273
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object p1, p1, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 274
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object p1, p1, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    .line 275
    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "KN"

    const-string v6, "normal"

    .line 274
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivityMiaoCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object p1, p1, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object p1, p1, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    :cond_3f
    return-void
.end method

.method public showLater()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$900(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;->this$1:Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    iget-object v0, v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1000(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    return-void
.end method
