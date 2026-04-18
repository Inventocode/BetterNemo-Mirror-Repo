.class public final Lcom/ljwx/basestate/czy/StateConfig;
.super Ljava/lang/Object;
.source "StateConfig.kt"


# static fields
.field private static emptyLayout:I

.field private static errorLayout:I

.field private static extendLayout:I

.field private static loadingLayout:I

.field private static offlineLayout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/basestate/czy/StateConfig;

    invoke-direct {v0}, Lcom/ljwx/basestate/czy/StateConfig;-><init>()V

    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/ljwx/basestate/czy/StateConfig;->errorLayout:I

    .line 27
    sput v0, Lcom/ljwx/basestate/czy/StateConfig;->emptyLayout:I

    .line 32
    sput v0, Lcom/ljwx/basestate/czy/StateConfig;->loadingLayout:I

    .line 37
    sput v0, Lcom/ljwx/basestate/czy/StateConfig;->offlineLayout:I

    .line 42
    sput v0, Lcom/ljwx/basestate/czy/StateConfig;->extendLayout:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmptyLayout()I
    .registers 1

    .line 27
    sget v0, Lcom/ljwx/basestate/czy/StateConfig;->emptyLayout:I

    return v0
.end method

.method public static final getErrorLayout()I
    .registers 1

    .line 22
    sget v0, Lcom/ljwx/basestate/czy/StateConfig;->errorLayout:I

    return v0
.end method

.method public static final getExtendLayout()I
    .registers 1

    .line 42
    sget v0, Lcom/ljwx/basestate/czy/StateConfig;->extendLayout:I

    return v0
.end method

.method public static final getLoadingLayout()I
    .registers 1

    .line 32
    sget v0, Lcom/ljwx/basestate/czy/StateConfig;->loadingLayout:I

    return v0
.end method

.method public static final getOfflineLayout()I
    .registers 1

    .line 37
    sget v0, Lcom/ljwx/basestate/czy/StateConfig;->offlineLayout:I

    return v0
.end method
