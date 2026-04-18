.class public final Lcom/codemao/utils/util/CuKeyboardUtils;
.super Ljava/lang/Object;
.source "CuKeyboardUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 1

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/utils/util/CuKeyboardUtils;->fixSoftInputLeaks(Landroid/view/Window;)V

    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/view/Window;)V
    .registers 8

    .line 342
    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x4

    const-string v2, "mLastSrvView"

    const-string v3, "mCurRootView"

    const-string v4, "mServedView"

    const-string v5, "mNextServedView"

    .line 346
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_51

    .line 348
    aget-object v4, v2, v3

    .line 350
    :try_start_21
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_31

    const/4 v5, 0x1

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 354
    :cond_31
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 355
    instance-of v6, v5, Landroid/view/View;

    if-nez v6, :cond_3a

    goto :goto_4e

    .line 358
    :cond_3a
    check-cast v5, Landroid/view/View;

    .line 359
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_4e

    const/4 v5, 0x0

    .line 360
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_51
    return-void
.end method

.method public static toggleSoftInput()V
    .registers 2

    .line 178
    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
