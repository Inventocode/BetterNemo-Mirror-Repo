.class final Lio/socket/engineio/parser/Parser$4;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lio/socket/engineio/parser/Parser$EncodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/parser/Parser;->encodeOneBinaryPacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;


# direct methods
.method constructor <init>(Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 11

    .line 178
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_48

    .line 179
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    new-array v6, v5, [B

    .line 182
    aput-byte v4, v6, v4

    const/4 v7, 0x0

    .line 183
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_31

    add-int/lit8 v8, v7, 0x1

    .line 184
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    move v7, v8

    goto :goto_1c

    :cond_31
    sub-int/2addr v5, v3

    .line 186
    aput-byte v1, v6, v5

    .line 187
    iget-object v0, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    new-array v1, v2, [[B

    aput-object v6, v1, v4

    invoke-static {p1}, Lio/socket/engineio/parser/Parser;->access$100(Ljava/lang/String;)[B

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_48
    check-cast p1, [B

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    new-array v6, v5, [B

    .line 193
    aput-byte v3, v6, v4

    const/4 v7, 0x0

    .line 194
    :goto_59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6e

    add-int/lit8 v8, v7, 0x1

    .line 195
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    move v7, v8

    goto :goto_59

    :cond_6e
    sub-int/2addr v5, v3

    .line 197
    aput-byte v1, v6, v5

    .line 198
    iget-object v0, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    new-array v1, v2, [[B

    aput-object v6, v1, v4

    aput-object p1, v1, v3

    invoke-static {v1}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void
.end method
