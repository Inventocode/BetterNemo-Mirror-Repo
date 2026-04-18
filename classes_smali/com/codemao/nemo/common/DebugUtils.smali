.class public final Lcom/codemao/nemo/common/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/common/DebugUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/common/DebugUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/common/DebugUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/common/DebugUtils;->INSTANCE:Lcom/codemao/nemo/common/DebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDebug()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
