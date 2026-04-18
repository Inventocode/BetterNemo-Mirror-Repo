.class public final enum Lcom/arthenica/ffmpegkit/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/Level;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/arthenica/ffmpegkit/Level;

    .line 25
    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 31
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_STDERR"

    const/4 v2, 0x0

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 36
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_QUIET"

    const/4 v3, 0x1

    const/4 v4, -0x8

    invoke-direct {v0, v1, v3, v4}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 41
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_PANIC"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    .line 48
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_FATAL"

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    .line 54
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_ERROR"

    const/4 v2, 0x4

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v4}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    .line 60
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_WARNING"

    const/4 v2, 0x5

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v4}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    .line 65
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_INFO"

    const/4 v2, 0x6

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v4}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    .line 70
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_VERBOSE"

    const/4 v2, 0x7

    const/16 v4, 0x28

    invoke-direct {v0, v1, v2, v4}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    .line 75
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_DEBUG"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 80
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    const-string v1, "AV_LOG_TRACE"

    const/16 v2, 0x9

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    .line 25
    invoke-static {}, Lcom/arthenica/ffmpegkit/Level;->$values()[Lcom/arthenica/ffmpegkit/Level;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->$VALUES:[Lcom/arthenica/ffmpegkit/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/arthenica/ffmpegkit/Level;->value:I

    return-void
.end method

.method public static from(I)Lcom/arthenica/ffmpegkit/Level;
    .registers 3

    .line 91
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_9

    return-object v0

    .line 93
    :cond_9
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_12

    return-object v0

    .line 95
    :cond_12
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_1b

    return-object v0

    .line 97
    :cond_1b
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_24

    return-object v0

    .line 99
    :cond_24
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_2d

    return-object v0

    .line 101
    :cond_2d
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_36

    return-object v0

    .line 103
    :cond_36
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_3f

    return-object v0

    .line 105
    :cond_3f
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_48

    return-object v0

    .line 107
    :cond_48
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_51

    return-object v0

    .line 110
    :cond_51
    sget-object p0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Level;
    .registers 2

    .line 25
    const-class v0, Lcom/arthenica/ffmpegkit/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/arthenica/ffmpegkit/Level;

    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/Level;
    .registers 1

    .line 25
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->$VALUES:[Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arthenica/ffmpegkit/Level;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/arthenica/ffmpegkit/Level;->value:I

    return v0
.end method
