.class public Ljxl/biff/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# instance fields
.field private fonts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFont(Ljxl/biff/FontRecord;)V
    .registers 4

    .line 63
    invoke-virtual {p1}, Ljxl/biff/FontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    .line 65
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_11
    invoke-virtual {p1, v0}, Ljxl/biff/FontRecord;->initialize(I)V

    .line 74
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public getFont(I)Ljxl/biff/FontRecord;
    .registers 3

    const/4 v0, 0x4

    if-le p1, v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 93
    :cond_5
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FontRecord;

    return-object p1
.end method

.method rationalize()Ljxl/biff/IndexMapping;
    .registers 13

    .line 121
    new-instance v0, Ljxl/biff/IndexMapping;

    iget-object v1, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    const/4 v5, 0x4

    if-ge v4, v5, :cond_30

    .line 131
    iget-object v5, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/FontRecord;

    .line 132
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v5}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v6

    invoke-virtual {v5}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_30
    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 140
    :goto_32
    iget-object v7, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_8a

    .line 142
    iget-object v7, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/FontRecord;

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    .line 147
    :cond_47
    :goto_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    if-nez v9, :cond_6e

    .line 149
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxl/biff/FontRecord;

    .line 150
    invoke-virtual {v7, v10}, Ljxl/biff/FontRecord;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 153
    invoke-virtual {v7}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v9

    invoke-virtual {v10}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v10

    invoke-virtual {v0, v10}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_47

    :cond_6e
    if-nez v9, :cond_87

    .line 162
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v7}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v8

    sub-int/2addr v8, v6

    if-le v8, v5, :cond_7c

    const/4 v9, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v9, 0x0

    .line 164
    :goto_7d
    invoke-static {v9}, Ljxl/common/Assert;->verify(Z)V

    .line 165
    invoke-virtual {v7}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v7

    invoke-virtual {v0, v7, v8}, Ljxl/biff/IndexMapping;->setMapping(II)V

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 170
    :cond_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/FontRecord;

    .line 174
    invoke-virtual {v3}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljxl/biff/FontRecord;->initialize(I)V

    goto :goto_8e

    .line 177
    :cond_a6
    iput-object v1, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ljxl/biff/Fonts;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FontRecord;

    .line 110
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_6

    :cond_16
    return-void
.end method
