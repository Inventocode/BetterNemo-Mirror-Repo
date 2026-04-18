.class public Lcom/codemao/midi/util/MidiFileUtil;
.super Ljava/lang/Object;
.source "MidiFileUtil.java"


# direct methods
.method public static createNewFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v1, p0}, Lcom/codemao/midi/util/MidiFileUtil;->createNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static createNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method
