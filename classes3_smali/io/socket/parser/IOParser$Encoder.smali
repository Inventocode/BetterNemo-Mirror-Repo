.class public final Lio/socket/parser/IOParser$Encoder;
.super Ljava/lang/Object;
.source "IOParser.java"

# interfaces
.implements Lio/socket/parser/Parser$Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/IOParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Encoder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeAsBinary(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V
    .registers 5

    .line 73
    invoke-static {p1}, Lio/socket/parser/Binary;->deconstructPacket(Lio/socket/parser/Packet;)Lio/socket/parser/Binary$DeconstructedPacket;

    move-result-object p1

    .line 74
    iget-object v0, p1, Lio/socket/parser/Binary$DeconstructedPacket;->packet:Lio/socket/parser/Packet;

    invoke-direct {p0, v0}, Lio/socket/parser/IOParser$Encoder;->encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lio/socket/parser/Binary$DeconstructedPacket;->buffers:[[B

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 77
    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/socket/parser/Parser$Encoder$Callback;->call([Ljava/lang/Object;)V

    return-void
.end method

.method private encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;
    .registers 6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/socket/parser/Packet;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget v1, p1, Lio/socket/parser/Packet;->type:I

    const/4 v2, 0x5

    if-eq v2, v1, :cond_20

    const/4 v2, 0x6

    if-ne v2, v1, :cond_2a

    .line 49
    :cond_20
    iget v1, p1, Lio/socket/parser/Packet;->attachments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_2a
    iget-object v1, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 54
    iget-object v1, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_48
    iget v1, p1, Lio/socket/parser/Packet;->id:I

    if-ltz v1, :cond_4f

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    :cond_4f
    iget-object v1, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    if-eqz v1, :cond_56

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    :cond_56
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 67
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "encoded %s as %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 69
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public encode(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V
    .registers 10

    .line 29
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1b

    :cond_a
    iget-object v0, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    invoke-static {v0}, Lio/socket/hasbinary/HasBinary;->hasBinary(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 30
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    if-ne v0, v3, :cond_18

    const/4 v0, 0x5

    goto :goto_19

    :cond_18
    const/4 v0, 0x6

    :goto_19
    iput v0, p1, Lio/socket/parser/Packet;->type:I

    .line 33
    :cond_1b
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3a

    .line 34
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string v6, "encoding packet %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    :cond_3a
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    if-eq v2, v0, :cond_4d

    if-ne v1, v0, :cond_41

    goto :goto_4d

    .line 40
    :cond_41
    invoke-direct {p0, p1}, Lio/socket/parser/IOParser$Encoder;->encodeAsString(Lio/socket/parser/Packet;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 41
    invoke-interface {p2, v0}, Lio/socket/parser/Parser$Encoder$Callback;->call([Ljava/lang/Object;)V

    goto :goto_50

    .line 38
    :cond_4d
    :goto_4d
    invoke-direct {p0, p1, p2}, Lio/socket/parser/IOParser$Encoder;->encodeAsBinary(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V

    :goto_50
    return-void
.end method
