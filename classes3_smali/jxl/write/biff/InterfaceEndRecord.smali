.class Ljxl/write/biff/InterfaceEndRecord;
.super Ljxl/biff/WritableRecordData;
.source "InterfaceEndRecord.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    sget-object v0, Ljxl/biff/Type;->INTERFACEEND:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
