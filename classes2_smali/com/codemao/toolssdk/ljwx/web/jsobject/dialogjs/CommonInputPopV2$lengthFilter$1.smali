.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->lengthFilter(I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $maxLength:I

.field final synthetic this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;


# direct methods
.method constructor <init>(ILcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 3

    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->$maxLength:I

    iput-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    .line 604
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    const-string p3, "source"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "dest"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object p3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCharacterNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)I

    move-result p3

    .line 609
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCharacterNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)I

    move-result v0

    if-le p6, p5, :cond_34

    .line 612
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string p5, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iget-object p5, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p5, p4}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCharacterNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)I

    move-result p4

    goto :goto_35

    :cond_34
    const/4 p4, 0x0

    .line 615
    :goto_35
    iget p5, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->$maxLength:I

    sub-int/2addr p3, p4

    sub-int/2addr p5, p3

    const-string p3, ""

    if-gtz p5, :cond_3e

    goto :goto_6a

    :cond_3e
    if-lt p5, v0, :cond_42

    const/4 p3, 0x0

    goto :goto_6a

    .line 621
    :cond_42
    iget-object p4, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6, p5}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCharByByteNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;I)C

    move-result p4

    .line 622
    invoke-static {p4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p6

    if-eqz p6, :cond_60

    .line 623
    iget-object p6, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCharacterNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)I

    move-result p4

    sub-int/2addr p5, p4

    if-ne p5, p2, :cond_60

    return-object p3

    .line 628
    :cond_60
    iget-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p5}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getStringLessThanByteNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    :goto_6a
    return-object p3
.end method
