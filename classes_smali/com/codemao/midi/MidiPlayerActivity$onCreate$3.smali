.class final Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;

    invoke-direct {v0}, Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;-><init>()V

    sput-object v0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;->INSTANCE:Lcom/codemao/midi/MidiPlayerActivity$onCreate$3;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method
