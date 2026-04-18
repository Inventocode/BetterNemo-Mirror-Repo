.class public Lcom/geetest/sdk/g;
.super Lcom/geetest/sdk/f;
.source "SourceFile"


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/geetest/sdk/f;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/g;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/geetest/sdk/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p1, "BaseStatusDialog"

    const-string v0, "The context is unexpectedly empty !"

    .line 2
    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_c
    invoke-static {v0}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 8
    instance-of v0, p1, Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_66

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 25
    sget v3, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    sget v3, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_66

    .line 32
    :cond_46
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/geetest/sdk/g;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    iget-object v1, p0, Lcom/geetest/sdk/g;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_66
    :goto_66
    return-void
.end method
