.class public final Lio/socket/parser/IOParser$Decoder;
.super Ljava/lang/Object;
.source "IOParser.java"

# interfaces
.implements Lio/socket/parser/Parser$Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/IOParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decoder"
.end annotation


# instance fields
.field private onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

.field reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    return-void
.end method

.method private static decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;
    .registers 9

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    new-instance v1, Lio/socket/parser/Packet;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    invoke-direct {v1, v3}, Lio/socket/parser/Packet;-><init>(I)V

    .line 131
    iget v3, v1, Lio/socket/parser/Packet;->type:I

    if-ltz v3, :cond_110

    sget-object v4, Lio/socket/parser/Parser;->types:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1f

    goto/16 :goto_110

    :cond_1f
    const/4 v4, 0x5

    if-eq v4, v3, :cond_28

    const/4 v4, 0x6

    if-ne v4, v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_55

    :cond_28
    :goto_28
    const-string v3, "-"

    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10b

    if-gt v0, v5, :cond_34

    goto/16 :goto_10b

    .line 135
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3a
    add-int/2addr v4, v5

    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_4b

    .line 137
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 139
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lio/socket/parser/Packet;->attachments:I

    :goto_55
    add-int/lit8 v3, v4, 0x1

    if-le v0, v3, :cond_7e

    const/16 v6, 0x2f

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v6, v3, :cond_7e

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_66
    add-int/2addr v4, v5

    .line 146
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v7, v6, :cond_70

    goto :goto_77

    .line 148
    :cond_70
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    if-ne v6, v0, :cond_66

    .line 151
    :goto_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    goto :goto_82

    :cond_7e
    const-string v3, "/"

    .line 153
    iput-object v3, v1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    :goto_82
    add-int/lit8 v3, v4, 0x1

    if-le v0, v3, :cond_c3

    .line 157
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_c3

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9e
    add-int/2addr v4, v5

    .line 162
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 163
    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    if-gez v7, :cond_ac

    add-int/lit8 v4, v4, -0x1

    goto :goto_b3

    .line 167
    :cond_ac
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    if-ne v6, v0, :cond_9e

    .line 171
    :goto_b3
    :try_start_b3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lio/socket/parser/Packet;->id:I
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_c3

    .line 173
    :catch_be
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    move-result-object p0

    return-object p0

    :cond_c3
    :goto_c3
    add-int/2addr v4, v5

    if-le v0, v4, :cond_ea

    .line 180
    :try_start_c6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 181
    new-instance v0, Lorg/json/JSONTokener;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;
    :try_end_d8
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_d8} :catch_d9

    goto :goto_ea

    :catch_d9
    move-exception p0

    .line 183
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "An error occured while retrieving data from JSONTokener"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    move-result-object p0

    return-object p0

    .line 188
    :cond_ea
    :goto_ea
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 189
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object v1, v3, v5

    const-string p0, "decoded %s as %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_10a
    return-object v1

    .line 134
    :cond_10b
    :goto_10b
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    move-result-object p0

    return-object p0

    .line 131
    :cond_110
    :goto_110
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4

    .line 94
    invoke-static {p1}, Lio/socket/parser/IOParser$Decoder;->decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;

    move-result-object p1

    .line 95
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    const/4 v1, 0x5

    if-eq v1, v0, :cond_15

    const/4 v1, 0x6

    if-ne v1, v0, :cond_d

    goto :goto_15

    .line 104
    :cond_d
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_29

    .line 105
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    goto :goto_29

    .line 96
    :cond_15
    :goto_15
    new-instance v0, Lio/socket/parser/IOParser$BinaryReconstructor;

    invoke-direct {v0, p1}, Lio/socket/parser/IOParser$BinaryReconstructor;-><init>(Lio/socket/parser/Packet;)V

    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 98
    iget-object v0, v0, Lio/socket/parser/IOParser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    iget v0, v0, Lio/socket/parser/Packet;->attachments:I

    if-nez v0, :cond_29

    .line 99
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_29

    .line 100
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public add([B)V
    .registers 3

    .line 112
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    if-eqz v0, :cond_15

    .line 115
    invoke-virtual {v0, p1}, Lio/socket/parser/IOParser$BinaryReconstructor;->takeBinaryData([B)Lio/socket/parser/Packet;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 118
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_14

    .line 119
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    :cond_14
    return-void

    .line 113
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "got binary data when not reconstructing a packet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .registers 2

    .line 196
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {v0}, Lio/socket/parser/IOParser$BinaryReconstructor;->finishReconstruction()V

    :cond_7
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    return-void
.end method

.method public onDecoded(Lio/socket/parser/Parser$Decoder$Callback;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    return-void
.end method
