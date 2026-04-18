.class public Lcom/lxj/xpopup/util/XPermission$PermissionActivity;
.super Landroid/app/Activity;
.source "XPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/util/XPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 356
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lxj/xpopup/util/XPermission$PermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "TYPE"

    .line 366
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_28

    .line 427
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$900()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 428
    :cond_b
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lxj/xpopup/util/XPermission;->isGrantedWriteSettings()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 429
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$900()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/util/XPermission$SimpleCallback;->onGranted()V

    goto :goto_24

    .line 431
    :cond_1d
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$900()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/util/XPermission$SimpleCallback;->onDenied()V

    .line 433
    :goto_24
    invoke-static {p2}, Lcom/lxj/xpopup/util/XPermission;->access$902(Lcom/lxj/xpopup/util/XPermission$SimpleCallback;)Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    goto :goto_4e

    :cond_28
    const/4 p3, 0x3

    if-ne p1, p3, :cond_4e

    .line 435
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$1000()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_32

    return-void

    .line 436
    :cond_32
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lxj/xpopup/util/XPermission;->isGrantedDrawOverlays()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 437
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$1000()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/util/XPermission$SimpleCallback;->onGranted()V

    goto :goto_4b

    .line 439
    :cond_44
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$1000()Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/util/XPermission$SimpleCallback;->onDenied()V

    .line 441
    :goto_4b
    invoke-static {p2}, Lcom/lxj/xpopup/util/XPermission;->access$1002(Lcom/lxj/xpopup/util/XPermission$SimpleCallback;)Lcom/lxj/xpopup/util/XPermission$SimpleCallback;

    .line 443
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x40210

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8c

    .line 378
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    if-nez v0, :cond_36

    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "XPermission"

    const-string v0, "request permissions failed"

    .line 380
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 384
    :cond_36
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPermission;->access$300(Lcom/lxj/xpopup/util/XPermission;)Lcom/lxj/xpopup/util/XPermission$ThemeCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 385
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPermission;->access$300(Lcom/lxj/xpopup/util/XPermission;)Lcom/lxj/xpopup/util/XPermission$ThemeCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lxj/xpopup/util/XPermission$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    .line 387
    :cond_4b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lxj/xpopup/util/XPermission;->access$400(Lcom/lxj/xpopup/util/XPermission;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 393
    :cond_5c
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1}, Lcom/lxj/xpopup/util/XPermission;->access$500(Lcom/lxj/xpopup/util/XPermission;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 394
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1}, Lcom/lxj/xpopup/util/XPermission;->access$500(Lcom/lxj/xpopup/util/XPermission;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_78

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 399
    :cond_78
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPermission;->access$500(Lcom/lxj/xpopup/util/XPermission;)Ljava/util/List;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_a7

    :cond_8c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9a

    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/lxj/xpopup/util/XPermission;->access$600(Lcom/lxj/xpopup/util/XPermission;Landroid/app/Activity;I)V

    goto :goto_a7

    :cond_9a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a7

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 406
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/lxj/xpopup/util/XPermission;->access$700(Lcom/lxj/xpopup/util/XPermission;Landroid/app/Activity;I)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 414
    invoke-static {}, Lcom/lxj/xpopup/util/XPermission;->access$200()Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lxj/xpopup/util/XPermission;->access$800(Lcom/lxj/xpopup/util/XPermission;Landroid/app/Activity;)V

    .line 415
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
