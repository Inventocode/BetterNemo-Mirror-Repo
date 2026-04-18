.class Lcom/gyf/immersionbar/SpecialBarFontUtils;
.super Ljava/lang/Object;
.source "SpecialBarFontUtils.java"


# static fields
.field private static SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I

.field private static mSetStatusBarColorIcon:Ljava/lang/reflect/Method;

.field private static mSetStatusBarDarkIcon:Ljava/lang/reflect/Method;

.field private static mStatusBarColorFiled:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "setStatusBarDarkIcon"

    .line 28
    const-class v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mSetStatusBarColorIcon:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    new-array v3, v3, [Ljava/lang/Class;

    .line 33
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mSetStatusBarDarkIcon:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_1e} :catch_1e

    .line 38
    :catch_1e
    :try_start_1e
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "statusBarColor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mStatusBarColorFiled:Ljava/lang/reflect/Field;
    :try_end_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e .. :try_end_28} :catch_28

    .line 43
    :catch_28
    :try_start_28
    const-class v0, Landroid/view/View;

    const-string v1, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/gyf/immersionbar/SpecialBarFontUtils;->SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I
    :try_end_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_28 .. :try_end_37} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_37} :catch_37

    :catch_37
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeMeizuFlag(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z
    .registers 6

    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "meizuFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_25

    or-int/2addr p1, v2

    goto :goto_27

    :cond_25
    not-int p1, p1

    and-int/2addr p1, v2

    :goto_27
    if-eq v2, p1, :cond_40

    .line 146
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_2c} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2c} :catch_32
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return v0

    :catchall_2d
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40

    :catch_32
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_40

    :catch_37
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_40
    :goto_40
    const/4 p0, 0x0

    return p0
.end method

.method static isBlackColor(II)Z
    .registers 2

    .line 60
    invoke-static {p0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->toGrey(I)I

    move-result p0

    if-ge p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    if-eqz p0, :cond_4a

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_6
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 239
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    const-string v1, "setExtraFlags"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 242
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_39

    new-array p2, v2, [Ljava/lang/Object;

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v6

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_39
    new-array p2, v2, [Ljava/lang/Object;

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v6

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4a} :catch_4a

    :catch_4a
    :cond_4a
    :goto_4a
    return-void
.end method

.method private static setStatusBarColor(Landroid/view/Window;I)V
    .registers 4

    .line 187
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mStatusBarColorFiled:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1f

    .line 190
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p1, :cond_1f

    .line 192
    sget-object v1, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mStatusBarColorFiled:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static setStatusBarDarkIcon(Landroid/app/Activity;I)V
    .registers 5

    .line 85
    sget-object v0, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mSetStatusBarColorIcon:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_11} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_34

    :catch_12
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_34

    :catch_17
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_34

    :cond_1c
    const/16 v0, 0x32

    .line 94
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->isBlackColor(II)Z

    move-result v0

    .line 95
    sget-object v1, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mStatusBarColorFiled:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_31

    .line 96
    invoke-static {p0, v0, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;ZZ)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/view/Window;I)V

    goto :goto_34

    .line 99
    :cond_31
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :goto_34
    return-void
.end method

.method public static setStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .registers 3

    const/4 v0, 0x1

    .line 128
    invoke-static {p0, p1, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private static setStatusBarDarkIcon(Landroid/app/Activity;ZZ)V
    .registers 5

    .line 218
    sget-object v0, Lcom/gyf/immersionbar/SpecialBarFontUtils;->mSetStatusBarDarkIcon:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    const/4 p2, 0x1

    :try_start_5
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_11} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_25

    :catch_12
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_25

    :catch_17
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_25

    :cond_1c
    if-eqz p2, :cond_25

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/view/Window;Z)V

    :cond_25
    :goto_25
    return-void
.end method

.method private static setStatusBarDarkIcon(Landroid/view/View;Z)V
    .registers 3

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_a

    .line 171
    sget p1, Lcom/gyf/immersionbar/SpecialBarFontUtils;->SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I

    or-int/2addr p1, v0

    goto :goto_e

    .line 173
    :cond_a
    sget p1, Lcom/gyf/immersionbar/SpecialBarFontUtils;->SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I

    not-int p1, p1

    and-int/2addr p1, v0

    :goto_e
    if-eq p1, v0, :cond_13

    .line 176
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_13
    return-void
.end method

.method public static setStatusBarDarkIcon(Landroid/view/Window;I)V
    .registers 3

    .line 112
    :try_start_0
    invoke-static {p0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-le p1, v0, :cond_16

    .line 114
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/view/View;Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setStatusBarDarkIcon(Landroid/view/Window;Z)V
    .registers 4

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    .line 209
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const-string v0, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->changeMeizuFlag(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z

    goto :goto_1b

    .line 211
    :cond_10
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 212
    invoke-static {v0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 213
    invoke-static {p0, p1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarColor(Landroid/view/Window;I)V

    :goto_1b
    return-void
.end method

.method static toGrey(I)I
    .registers 4

    and-int/lit16 v0, p0, 0xff

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x26

    mul-int/lit8 v1, v1, 0x4b

    add-int/2addr p0, v1

    mul-int/lit8 v0, v0, 0xf

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method
