.class public Lcom/codemao/nemo/bean/RoleNumBean;
.super Ljava/lang/Object;
.source "RoleNumBean.java"


# static fields
.field public static degress:Ljava/lang/String; = "°"

.field public static minus:Ljava/lang/String; = "-"

.field public static percent:Ljava/lang/String; = "%"

.field public static zero:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValue(Ljava/lang/String;ILjava/lang/String;IIIZZ)Ljava/lang/String;
    .registers 9

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-ge p1, p4, :cond_9

    move p1, p4

    .line 57
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string v0, ""

    if-eqz p7, :cond_34

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_26

    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    :cond_26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_34
    sget-object p7, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    invoke-virtual {p0, p7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p7

    if-ge p7, p3, :cond_74

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p5, 0x1

    if-ne p3, p5, :cond_5a

    sget-object p3, Lcom/codemao/nemo/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5a

    if-ge p1, p4, :cond_56

    move p1, p4

    :cond_56
    if-nez p1, :cond_59

    const/4 p6, 0x0

    :cond_59
    move-object p0, v0

    .line 81
    :cond_5a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_63

    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    :cond_63
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_7d

    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    :cond_7d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRotateValue(I)Ljava/lang/String;
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/codemao/nemo/bean/RoleNumBean;->degress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScaleValue(I)Ljava/lang/String;
    .registers 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/codemao/nemo/bean/RoleNumBean;->percent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTransetValue(I)Ljava/lang/String;
    .registers 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMinus(Ljava/lang/String;)Z
    .registers 2

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_8
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parseAddRotateValue(Ljava/lang/String;IZZ)Ljava/lang/String;
    .registers 12

    .line 23
    sget-object v2, Lcom/codemao/nemo/bean/RoleNumBean;->degress:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x3e7

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/codemao/nemo/bean/RoleNumBean;->addValue(Ljava/lang/String;ILjava/lang/String;IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAddScaleValue(Ljava/lang/String;IZZ)Ljava/lang/String;
    .registers 12

    .line 27
    sget-object v2, Lcom/codemao/nemo/bean/RoleNumBean;->percent:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x270f

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/codemao/nemo/bean/RoleNumBean;->addValue(Ljava/lang/String;ILjava/lang/String;IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAddTransetValue(Ljava/lang/String;IZZ)Ljava/lang/String;
    .registers 12

    const-string v2, ""

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x270f

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    .line 32
    invoke-static/range {v0 .. v7}, Lcom/codemao/nemo/bean/RoleNumBean;->addValue(Ljava/lang/String;ILjava/lang/String;IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelRotateValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 91
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->degress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/bean/RoleNumBean;->parseDelValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelScaleValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 95
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->percent:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/bean/RoleNumBean;->parseDelValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelTransetValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/bean/RoleNumBean;->parseDelValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_16
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const/4 p2, 0x0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/nemo/bean/RoleNumBean;->isMinus(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_50

    sget-object v1, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    :cond_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseMinusValue(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p1, :cond_f

    invoke-static {p0}, Lcom/codemao/nemo/bean/RoleNumBean;->isMinus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_35

    :cond_f
    if-eqz p1, :cond_2c

    .line 143
    sget-object p1, Lcom/codemao/nemo/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-object p0

    .line 146
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_2c
    sget-object p1, Lcom/codemao/nemo/bean/RoleNumBean;->minus:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_35
    :goto_35
    sget-object p0, Lcom/codemao/nemo/bean/RoleNumBean;->zero:Ljava/lang/String;

    return-object p0
.end method

.method public static parseRotationValue(Ljava/lang/String;)I
    .registers 3

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_8
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->degress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseScaleValue(Ljava/lang/String;)I
    .registers 3

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_8
    sget-object v0, Lcom/codemao/nemo/bean/RoleNumBean;->percent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
