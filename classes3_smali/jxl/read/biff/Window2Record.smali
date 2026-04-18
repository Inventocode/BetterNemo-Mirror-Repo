.class Ljxl/read/biff/Window2Record;
.super Ljxl/biff/RecordData;
.source "Window2Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/Window2Record$Biff7;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/read/biff/Window2Record$Biff7;


# instance fields
.field private displayZeroValues:Z

.field private frozenPanes:Z

.field private pageBreakPreviewMode:Z

.field private showGridLines:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-class v0, Ljxl/read/biff/Window2Record;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/Window2Record$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/Window2Record$Biff7;-><init>(Ljxl/read/biff/Window2Record$1;)V

    sput-object v0, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 6

    .line 83
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 84
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 86
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 89
    :goto_18
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 90
    :goto_21
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 91
    :goto_2a
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    .line 93
    :cond_31
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    const/16 v0, 0xa

    .line 95
    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    const/16 v0, 0xc

    .line 96
    aget-byte v0, p1, v0

    const/16 v1, 0xd

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V
    .registers 5

    .line 108
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 109
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 111
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 114
    :goto_18
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 115
    :goto_21
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 116
    :goto_2a
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_31

    const/4 p2, 0x1

    .line 118
    :cond_31
    iput-boolean p2, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    return-void
.end method


# virtual methods
.method public getDisplayZeroValues()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    return v0
.end method

.method public getFrozen()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    return v0
.end method

.method public getShowGridLines()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    return v0
.end method

.method public isPageBreakPreview()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    return v0
.end method
