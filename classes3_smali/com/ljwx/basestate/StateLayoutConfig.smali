.class public final Lcom/ljwx/basestate/StateLayoutConfig;
.super Ljava/lang/Object;
.source "StateLayoutConfig.kt"


# static fields
.field private static emptyLayout:I

.field private static errorLayout:I

.field private static extendLayout:I

.field private static loadingLayout:I

.field private static offlineLayout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/basestate/StateLayoutConfig;

    invoke-direct {v0}, Lcom/ljwx/basestate/StateLayoutConfig;-><init>()V

    const/4 v0, -0x1

    .line 10
    sput v0, Lcom/ljwx/basestate/StateLayoutConfig;->errorLayout:I

    .line 14
    sput v0, Lcom/ljwx/basestate/StateLayoutConfig;->emptyLayout:I

    .line 18
    sput v0, Lcom/ljwx/basestate/StateLayoutConfig;->loadingLayout:I

    .line 22
    sput v0, Lcom/ljwx/basestate/StateLayoutConfig;->offlineLayout:I

    .line 26
    sput v0, Lcom/ljwx/basestate/StateLayoutConfig;->extendLayout:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmptyLayout()I
    .registers 1

    .line 14
    sget v0, Lcom/ljwx/basestate/StateLayoutConfig;->emptyLayout:I

    return v0
.end method

.method public static final getErrorLayout()I
    .registers 1

    .line 10
    sget v0, Lcom/ljwx/basestate/StateLayoutConfig;->errorLayout:I

    return v0
.end method

.method public static final getExtendLayout()I
    .registers 1

    .line 26
    sget v0, Lcom/ljwx/basestate/StateLayoutConfig;->extendLayout:I

    return v0
.end method

.method public static final getLoadingLayout()I
    .registers 1

    .line 18
    sget v0, Lcom/ljwx/basestate/StateLayoutConfig;->loadingLayout:I

    return v0
.end method

.method public static final getOfflineLayout()I
    .registers 1

    .line 22
    sget v0, Lcom/ljwx/basestate/StateLayoutConfig;->offlineLayout:I

    return v0
.end method
