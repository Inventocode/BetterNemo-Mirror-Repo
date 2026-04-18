.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showLaterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

.field final synthetic val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/dialog/LaterCheckDialog;)V
    .registers 3

    .line 316
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;->val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public know(Z)V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;->val$dialog:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_c

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$1200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    :cond_c
    return-void
.end method
