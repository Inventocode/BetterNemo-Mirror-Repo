.class public Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# static fields
.field private static sArrayListWindowViews:Z = false

.field private static final sCustomWindowPrefix:Ljava/lang/String; = "/CustomWindow"

.field private static final sDialogWindowPrefix:Ljava/lang/String; = "/DialogWindow"

.field private static sIsInitialized:Z = false

.field private static sItemViewGetDataMethod:Ljava/lang/reflect/Method; = null

.field private static sListMenuItemViewClazz:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sMainWindowPrefix:Ljava/lang/String; = "/MainWindow"

.field private static sPhoneWindowClazz:Ljava/lang/Class; = null

.field private static sPopupWindowClazz:Ljava/lang/Class; = null

.field private static final sPopupWindowPrefix:Ljava/lang/String; = "/PopupWindow"

.field private static sViewArrayWindowViews:Z = false

.field private static sViewSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sWindowManger:Ljava/lang/Object;

.field private static viewsField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 175
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewSizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterNullAndDismissToastView([Landroid/view/View;)[Landroid/view/View;
    .registers 5

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    .line 195
    aget-object v3, p0, v2

    if-eqz v3, :cond_14

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 201
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    .line 202
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method private static findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 225
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfActionMenuItem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfToolbar(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3a

    const-string v0, "androidx.appcompat.widget.Toolbar"

    const-string v1, "android.widget.Toolbar"

    .line 226
    filled-new-array {v0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "mNavButtonView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3a

    if-ne v0, p0, :cond_3a

    return-object p0

    .line 231
    :cond_3a
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMenuItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_41

    return-object p0

    .line 234
    :cond_41
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    .line 235
    :goto_46
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5d

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5a

    return-object v1

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 308
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getTabHostTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "getCurrentTabView"

    .line 309
    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 311
    :cond_16
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    .line 312
    :goto_1a
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    return-object v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClickView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 250
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 251
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v1

    .line 255
    :try_start_b
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_24

    aget-object v5, v1, v4

    .line 256
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne v6, v7, :cond_21

    .line 257
    invoke-static {v5, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_21

    return-object v5

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 262
    :cond_24
    array-length v2, v1

    :goto_25
    if-ge v3, v2, :cond_3b

    .line 264
    aget-object v4, v1, v3

    .line 265
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-eq v5, v6, :cond_38

    .line 266
    invoke-static {v4, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findMenuItemView(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_35} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_35} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_3b

    if-eqz v4, :cond_38

    return-object v4

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :catch_3b
    :cond_3b
    return-object v0
.end method

.method public static getClickView(Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 287
    :cond_8
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 288
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 292
    :goto_10
    :try_start_10
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 293
    aget-object v3, v0, v2

    .line 294
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-eq v4, v5, :cond_24

    .line 295
    invoke-static {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->findTabView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_27

    if-eqz v3, :cond_24

    return-object v3

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catch_27
    :cond_27
    return-object v1
.end method

.method public static getMainWindowPrefix()Ljava/lang/String;
    .registers 1

    const-string v0, "/MainWindow"

    return-object v0
.end method

.method private static getMenuItemData(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sListMenuItemViewClazz:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 216
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sItemViewGetDataMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 217
    :cond_12
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfAndroidXListMenuItemView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfSupportListMenuItemView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_27
    :goto_27
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getMenuItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSortedWindowViews()[Landroid/view/View;
    .registers 3

    .line 166
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 167
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 168
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 169
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewSizeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_14
    return-object v0
.end method

.method private static getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;
    .registers 7

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "/PopupWindow"

    const-string v2, "/CustomWindow"

    const-string v3, "/DialogWindow"

    if-eqz v0, :cond_39

    .line 342
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_39

    .line 343
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    const-string p0, "/MainWindow"

    return-object p0

    :cond_1a
    const/16 v4, 0x63

    if-ge v0, v4, :cond_27

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-ne v4, v5, :cond_27

    return-object v3

    :cond_27
    const/16 v4, 0x7cf

    if-ge v0, v4, :cond_34

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne v4, v5, :cond_34

    return-object v1

    :cond_34
    const/16 v4, 0xbb7

    if-ge v0, v4, :cond_39

    return-object v2

    .line 357
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 358
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-ne p0, v0, :cond_42

    return-object v3

    .line 361
    :cond_42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne p0, v0, :cond_47

    return-object v1

    :cond_47
    return-object v2
.end method

.method private static getTabHostTag(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 323
    instance-of v0, p0, Landroid/widget/TabHost;

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getCurrentTabTag"

    .line 324
    invoke-static {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWindowPrefix(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getCurrentRootWindowsHashCode()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 331
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_13
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWindowViews()[Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    .line 136
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 137
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 140
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Landroid/view/Window;->isActive()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 142
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :cond_20
    if-eqz v2, :cond_27

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object v3, v1, v0

    :cond_27
    return-object v1

    .line 149
    :cond_28
    :try_start_28
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sArrayListWindowViews:Z

    if-eqz v0, :cond_3c

    .line 150
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/view/View;

    goto :goto_49

    .line 151
    :cond_3c
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewArrayWindowViews:Z

    if-eqz v0, :cond_49

    .line 152
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/view/View;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    if-eqz v3, :cond_4c

    move-object v1, v3

    .line 161
    :catch_4c
    :cond_4c
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->filterNullAndDismissToastView([Landroid/view/View;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .registers 4

    .line 56
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    if-nez v0, :cond_a6

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d

    const-string v2, "android.view.WindowManagerGlobal"

    goto :goto_f

    :cond_d
    const-string v2, "android.view.WindowManagerImpl"

    :goto_f
    const/4 v3, 0x1

    .line 67
    :try_start_10
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-lt v0, v1, :cond_19

    const-string v0, "sDefaultWindowManager"

    goto :goto_22

    :cond_19
    const/16 v1, 0xd

    if-lt v0, v1, :cond_20

    const-string v0, "sWindowManager"

    goto :goto_22

    :cond_20
    const-string v0, "mWindowManager"

    :goto_22
    const-string v1, "mViews"

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_40

    .line 81
    sput-boolean v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sArrayListWindowViews:Z

    goto :goto_4c

    .line 82
    :cond_40
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Landroid/view/View;

    if-ne v1, v2, :cond_4c

    .line 83
    sput-boolean v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sViewArrayWindowViews:Z

    .line 86
    :cond_4c
    :goto_4c
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sWindowManger:Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_56} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_56} :catch_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    const-string v0, "com.android.internal.view.menu.ListMenuItemView"

    .line 97
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sListMenuItemViewClazz:Ljava/lang/Class;

    const-string v0, "com.android.internal.view.menu.MenuView$ItemView"

    .line 98
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getItemData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sItemViewGetDataMethod:Ljava/lang/reflect/Method;
    :try_end_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_6f} :catch_6f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_6f} :catch_6f

    :catch_6f
    const/16 v0, 0x17

    .line 107
    :try_start_71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_73
    .catch Ljava/lang/ClassNotFoundException; {:try_start_71 .. :try_end_73} :catch_8f

    if-lt v1, v0, :cond_87

    :try_start_75
    const-string v1, "com.android.internal.policy.PhoneWindow$DecorView"

    .line 109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;
    :try_end_7d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_7d} :catch_7e

    goto :goto_8f

    :catch_7e
    :try_start_7e
    const-string v1, "com.android.internal.policy.DecorView"

    .line 111
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    goto :goto_8f

    :cond_87
    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    .line 114
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_8f} :catch_8f

    .line 121
    :catch_8f
    :goto_8f
    :try_start_8f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_9c

    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    .line 122
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    goto :goto_a4

    :cond_9c
    const-string v0, "android.widget.PopupWindow$PopupViewContainer"

    .line 124
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;
    :try_end_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8f .. :try_end_a4} :catch_a4

    .line 130
    :catch_a4
    :goto_a4
    sput-boolean v3, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    :cond_a6
    return-void
.end method

.method public static isCustomWindow(Landroid/view/View;)Z
    .registers 2

    .line 381
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/CustomWindow"

    .line 382
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isDecorView(Ljava/lang/Class;)Z
    .registers 2

    .line 207
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sIsInitialized:Z

    if-nez v0, :cond_7

    .line 208
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 210
    :cond_7
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPhoneWindowClazz:Ljava/lang/Class;

    if-eq p0, v0, :cond_12

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->sPopupWindowClazz:Ljava/lang/Class;

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public static isDialogOrPopupWindow(Landroid/view/View;)Z
    .registers 2

    .line 376
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSubWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/DialogWindow"

    .line 377
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "/PopupWindow"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isMainWindow(Landroid/view/View;)Z
    .registers 3

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 369
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 370
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method
