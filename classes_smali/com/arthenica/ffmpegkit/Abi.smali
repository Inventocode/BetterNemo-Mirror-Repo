.class public final enum Lcom/arthenica/ffmpegkit/Abi;
.super Ljava/lang/Enum;
.source "Abi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/Abi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/Abi;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/arthenica/ffmpegkit/Abi;

    .line 25
    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 30
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_ARMV7A_NEON"

    const/4 v2, 0x0

    const-string v3, "armeabi-v7a-neon"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

    .line 35
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_ARMV7A"

    const/4 v2, 0x1

    const-string v3, "armeabi-v7a"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

    .line 40
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_ARM"

    const/4 v2, 0x2

    const-string v3, "armeabi"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

    .line 45
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_X86"

    const/4 v2, 0x3

    const-string v3, "x86"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

    .line 50
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_X86_64"

    const/4 v2, 0x4

    const-string v3, "x86_64"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 55
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_ARM64_V8A"

    const/4 v2, 0x5

    const-string v3, "arm64-v8a"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

    .line 60
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    const-string v1, "ABI_UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    .line 25
    invoke-static {}, Lcom/arthenica/ffmpegkit/Abi;->$values()[Lcom/arthenica/ffmpegkit/Abi;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->$VALUES:[Lcom/arthenica/ffmpegkit/Abi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/Abi;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Abi;
    .registers 2

    .line 25
    const-class v0, Lcom/arthenica/ffmpegkit/Abi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/arthenica/ffmpegkit/Abi;

    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/Abi;
    .registers 1

    .line 25
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->$VALUES:[Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/Abi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arthenica/ffmpegkit/Abi;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/Abi;->name:Ljava/lang/String;

    return-object v0
.end method
