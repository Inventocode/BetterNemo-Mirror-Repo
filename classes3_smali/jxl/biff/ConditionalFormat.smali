.class public Ljxl/biff/ConditionalFormat;
.super Ljava/lang/Object;
.source "ConditionalFormat.java"


# instance fields
.field private conditions:Ljava/util/ArrayList;

.field private range:Ljxl/biff/ConditionalFormatRangeRecord;


# direct methods
.method public constructor <init>(Ljxl/biff/ConditionalFormatRangeRecord;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCondition(Ljxl/biff/ConditionalFormatRecord;)V
    .registers 3

    .line 62
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 119
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormatRecord;

    .line 122
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_b

    :cond_1b
    return-void
.end method
