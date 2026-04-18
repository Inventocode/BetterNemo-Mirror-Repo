.class public Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;
.super Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
.source "BleScanException.java"


# instance fields
.field private final reason:I

.field private final retryDateSuggestion:Ljava/util/Date;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 100
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->reason:I

    .line 101
    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x0

    .line 111
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->reason:I

    .line 113
    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .registers 4

    .line 105
    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 106
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->reason:I

    .line 107
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method private static createMessage(ILjava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->reasonDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->retryDateSuggestionIfExists(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static reasonDescription(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7ffffffe

    if-eq p0, v0, :cond_29

    packed-switch p0, :pswitch_data_2c

    const-string p0, "Unknown error"

    return-object p0

    :pswitch_b  #0x9
    const-string p0, "Scan failed because out of hardware resources"

    return-object p0

    :pswitch_e  #0x8
    const-string p0, "Scan failed because feature unsupported"

    return-object p0

    :pswitch_11  #0x7
    const-string p0, "Scan failed because of an internal error"

    return-object p0

    :pswitch_14  #0x6
    const-string p0, "Scan failed because application registration failed"

    return-object p0

    :pswitch_17  #0x5
    const-string p0, "Scan failed because it has already started"

    return-object p0

    :pswitch_1a  #0x4
    const-string p0, "Location Services disabled"

    return-object p0

    :pswitch_1d  #0x3
    const-string p0, "Location Permission missing"

    return-object p0

    :pswitch_20  #0x2
    const-string p0, "Bluetooth not available"

    return-object p0

    :pswitch_23  #0x1
    const-string p0, "Bluetooth disabled"

    return-object p0

    :pswitch_26  #0x0
    const-string p0, "Bluetooth cannot start"

    return-object p0

    :cond_29
    const-string p0, "Undocumented scan throttle"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
        :pswitch_11  #00000007
        :pswitch_e  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method

.method private static retryDateSuggestionIfExists(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", suggested retry date is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getReason()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->reason:I

    return v0
.end method

.method public getRetryDateSuggestion()Ljava/util/Date;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-object v0
.end method
