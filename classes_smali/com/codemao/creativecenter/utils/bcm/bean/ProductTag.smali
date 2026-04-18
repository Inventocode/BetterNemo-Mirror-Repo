.class public Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;
.super Ljava/lang/Object;
.source "ProductTag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private label_id:I

.field private label_name:Ljava/lang/String;

.field private label_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel_id()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_id:I

    return v0
.end method

.method public getLabel_name()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel_type()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme_name()Ljava/lang/String;
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 25
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4c

    goto :goto_36

    :sswitch_16
    const-string v2, "NEW_RECOMMEND_WORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v2, "USER_COURSE_WORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v1, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v2, "OFFICIAL_COURSE_WORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    packed-switch v1, :pswitch_data_5a

    .line 33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_name:Ljava/lang/String;

    return-object v0

    :pswitch_3c  #0x2
    const-string/jumbo v0, "新作喵喵看"

    return-object v0

    :pswitch_40  #0x1
    const-string/jumbo v0, "大家的知识库"

    return-object v0

    :pswitch_44  #0x0
    const-string/jumbo v0, "星能猫小课堂"

    return-object v0

    .line 36
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->label_name:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_4c
    .sparse-switch
        -0x5f1e229f -> :sswitch_2c
        -0x599d19bf -> :sswitch_21
        -0x1a68168d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_44  #00000000
        :pswitch_40  #00000001
        :pswitch_3c  #00000002
    .end packed-switch
.end method
