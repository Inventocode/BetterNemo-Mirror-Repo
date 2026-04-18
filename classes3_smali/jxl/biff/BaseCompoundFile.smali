.class public abstract Ljxl/biff/BaseCompoundFile;
.super Ljava/lang/Object;
.source "BaseCompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCompoundFile$PropertyStorage;
    }
.end annotation


# static fields
.field protected static final IDENTIFIER:[B

.field public static final STANDARD_PROPERTY_SETS:[Ljava/lang/String;

.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    const-class v0, Ljxl/biff/BaseCompoundFile;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->logger:Ljxl/common/Logger;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_20

    sput-object v0, Ljxl/biff/BaseCompoundFile;->IDENTIFIER:[B

    const-string v0, "Root Entry"

    const-string v1, "Workbook"

    const-string v2, "\u0005SummaryInformation"

    const-string v3, "\u0005DocumentSummaryInformation"

    .line 118
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    return-void

    :array_20
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljxl/common/Logger;
    .registers 1

    .line 28
    sget-object v0, Ljxl/biff/BaseCompoundFile;->logger:Ljxl/common/Logger;

    return-object v0
.end method
