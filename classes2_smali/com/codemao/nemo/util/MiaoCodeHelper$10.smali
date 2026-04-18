.class Lcom/codemao/nemo/util/MiaoCodeHelper$10;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->showLaterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

.field final synthetic val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/dialog/LaterCheckDialog;)V
    .registers 3

    .line 362
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$10;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$10;->val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public know(Z)V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$10;->val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_c

    .line 367
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$10;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1600(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    :cond_c
    return-void
.end method
