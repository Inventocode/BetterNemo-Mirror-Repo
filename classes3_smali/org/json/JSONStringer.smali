.class public Lorg/json/JSONStringer;
.super Lorg/json/JSONWriter;
.source "JSONStringer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 76
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method
