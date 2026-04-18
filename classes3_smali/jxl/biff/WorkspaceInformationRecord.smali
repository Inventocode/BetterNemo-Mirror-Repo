.class public Ljxl/biff/WorkspaceInformationRecord;
.super Ljxl/biff/WritableRecordData;
.source "WorkspaceInformationRecord.java"


# instance fields
.field private columnOutlines:Z

.field private fitToPages:Z

.field private rowOutlines:Z

.field private wsoptions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Ljxl/biff/WorkspaceInformationRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    sget-object v0, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 v0, 0x4c1

    .line 83
    iput v0, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 5

    .line 68
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 69
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 72
    :goto_1e
    iput-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    or-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 73
    :goto_27
    iput-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    or-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    .line 74
    :cond_2e
    iput-boolean v0, p0, Ljxl/biff/WorkspaceInformationRecord;->columnOutlines:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 131
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    if-eqz v1, :cond_d

    .line 133
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 136
    :cond_d
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    if-eqz v1, :cond_17

    .line 138
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 141
    :cond_17
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->columnOutlines:Z

    if-eqz v1, :cond_21

    .line 143
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 146
    :cond_21
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getFitToPages()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    return v0
.end method

.method public setColumnOutlines(Z)V
    .registers 2

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    return-void
.end method

.method public setFitToPages(Z)V
    .registers 2

    .line 103
    iput-boolean p1, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    return-void
.end method

.method public setRowOutlines(Z)V
    .registers 2

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    return-void
.end method
