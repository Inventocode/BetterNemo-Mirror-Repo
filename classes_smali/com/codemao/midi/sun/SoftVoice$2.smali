.class Lcom/codemao/midi/sun/SoftVoice$2;
.super Ljava/lang/Object;
.source "SoftVoice.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field active:[D

.field balance:[D

.field chorus:[D

.field gain:[D

.field pan:[D

.field reverb:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftVoice;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftVoice;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->this$0:Lcom/codemao/midi/sun/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$000(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$2;->active:[D

    .line 130
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$100(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$2;->gain:[D

    .line 131
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$200(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$2;->pan:[D

    .line 132
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$300(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$2;->balance:[D

    .line 133
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$400(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$2;->reverb:[D

    .line 134
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$500(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->chorus:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "active"

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->active:[D

    return-object p1

    :cond_f
    const-string v0, "gain"

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->gain:[D

    return-object p1

    :cond_1a
    const-string v0, "pan"

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 143
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->pan:[D

    return-object p1

    :cond_25
    const-string v0, "balance"

    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 145
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->balance:[D

    return-object p1

    :cond_30
    const-string v0, "reverb"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 147
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->reverb:[D

    return-object p1

    :cond_3b
    const-string v0, "chorus"

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 149
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$2;->chorus:[D

    :cond_45
    return-object p1
.end method
