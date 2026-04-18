.class public final Lcom/codemao/toolssdk/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/DialogUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/DialogUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/DialogUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/DialogUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DialogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 85
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 86
    :cond_c
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_20

    .line 87
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.baseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/DialogUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method
