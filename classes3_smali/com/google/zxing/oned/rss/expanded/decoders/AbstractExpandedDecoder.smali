.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"


# instance fields
.field private final generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 44
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .registers 8

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 59
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    :cond_d
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 62
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    :cond_1a
    const/4 v1, 0x4

    .line 65
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v2

    if-eq v2, v1, :cond_96

    const/4 v1, 0x5

    if-eq v2, v1, :cond_90

    .line 72
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_8a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_84

    const/4 v1, 0x7

    .line 78
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_9c

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown decoder: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_54  #0x3f
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    :pswitch_5a  #0x3e
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_60  #0x3d
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 84
    :pswitch_66  #0x3c
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_6c  #0x3b
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :pswitch_72  #0x3a
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_78  #0x39
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :pswitch_7e  #0x38
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_84
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    .line 74
    :cond_8a
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    .line 69
    :cond_90
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    .line 68
    :cond_96
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-object v0

    :pswitch_data_9c
    .packed-switch 0x38
        :pswitch_7e  #00000038
        :pswitch_78  #00000039
        :pswitch_72  #0000003a
        :pswitch_6c  #0000003b
        :pswitch_66  #0000003c
        :pswitch_60  #0000003d
        :pswitch_5a  #0000003e
        :pswitch_54  #0000003f
    .end packed-switch
.end method


# virtual methods
.method protected final getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-object v0
.end method

.method protected final getInformation()Lcom/google/zxing/common/BitArray;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method
