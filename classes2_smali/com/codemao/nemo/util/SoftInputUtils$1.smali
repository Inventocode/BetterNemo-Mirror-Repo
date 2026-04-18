.class Lcom/codemao/nemo/util/SoftInputUtils$1;
.super Ljava/lang/Object;
.source "SoftInputUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 3

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/util/SoftInputUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/codemao/nemo/util/SoftInputUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/util/SoftInputUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/codemao/nemo/util/SoftInputUtils$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
