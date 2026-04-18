.class Lcom/codemao/midi/sun/SoftChannel$1;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cc:[[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftChannel;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftChannel;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$1;->this$0:Lcom/codemao/midi/sun/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->access$300(Lcom/codemao/midi/sun/SoftChannel;)[[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$1;->cc:[[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$1;->cc:[[D

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    return-object p1
.end method
