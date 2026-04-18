.class public final Lcom/codemao/nemo/constant/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

.field private static MINE_PAGE_TAB_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/constant/AppConfig;

    invoke-direct {v0}, Lcom/codemao/nemo/constant/AppConfig;-><init>()V

    sput-object v0, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMINE_PAGE_TAB_INDEX()I
    .registers 2

    .line 9
    sget v0, Lcom/codemao/nemo/constant/AppConfig;->MINE_PAGE_TAB_INDEX:I

    return v0
.end method

.method public final isPublishAllPass()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final publishAllPass()V
    .registers 1

    return-void
.end method

.method public final setMINE_PAGE_TAB_INDEX(I)V
    .registers 2

    .line 9
    sput p1, Lcom/codemao/nemo/constant/AppConfig;->MINE_PAGE_TAB_INDEX:I

    return-void
.end method
