.class Lcom/chuanglan/shanyan_sdk/utils/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chuanglan/shanyan_sdk/utils/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/w$a;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/w$a;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/reflect/Method;
    .registers 3

    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/w$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
