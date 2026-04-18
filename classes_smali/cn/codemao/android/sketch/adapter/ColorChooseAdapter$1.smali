.class Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;
.super Ljava/lang/Object;
.source "ColorChooseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

.field final synthetic val$holder:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;->val$holder:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;->val$holder:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->access$002(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;I)I

    .line 90
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
