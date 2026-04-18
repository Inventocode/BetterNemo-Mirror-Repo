.class public Ljxl/biff/AutoFilter;
.super Ljava/lang/Object;
.source "AutoFilter.java"


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilterRecord;

.field private autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

.field private filterMode:Ljxl/biff/FilterModeRecord;


# direct methods
.method public constructor <init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljxl/biff/AutoFilter;->filterMode:Ljxl/biff/FilterModeRecord;

    .line 42
    iput-object p2, p0, Ljxl/biff/AutoFilter;->autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/AutoFilterRecord;)V
    .registers 2

    .line 47
    iput-object p1, p0, Ljxl/biff/AutoFilter;->autoFilter:Ljxl/biff/AutoFilterRecord;

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Ljxl/biff/AutoFilter;->filterMode:Ljxl/biff/FilterModeRecord;

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 63
    :cond_7
    iget-object v0, p0, Ljxl/biff/AutoFilter;->autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 68
    :cond_e
    iget-object v0, p0, Ljxl/biff/AutoFilter;->autoFilter:Ljxl/biff/AutoFilterRecord;

    if-eqz v0, :cond_15

    .line 70
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :cond_15
    return-void
.end method
