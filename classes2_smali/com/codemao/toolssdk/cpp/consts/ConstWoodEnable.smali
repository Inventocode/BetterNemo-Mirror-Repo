.class public final Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;
.super Ljava/lang/Object;
.source "ConstWoodEnable.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;

.field private static final enableOld:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;->enableOld:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableOld()Z
    .registers 2

    .line 5
    sget-boolean v0, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;->enableOld:Z

    return v0
.end method
