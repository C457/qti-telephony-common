.class public Landroid/support/v4/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/e;
.implements Landroid/arch/lifecycle/q;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/e$a;,
        Landroid/support/v4/app/e$c;,
        Landroid/support/v4/app/e$b;
    }
.end annotation


# static fields
.field private static final X:Landroid/support/v4/g/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/l",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final a:Ljava/lang/Object;


# instance fields
.field A:Ljava/lang/String;

.field protected B:Z

.field C:Z

.field protected D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Landroid/view/ViewGroup;

.field protected J:Landroid/view/View;

.field K:Landroid/view/View;

.field L:Z

.field M:Z

.field N:Landroid/support/v4/app/e$a;

.field O:Z

.field P:Z

.field Q:F

.field R:Landroid/view/LayoutInflater;

.field S:Z

.field T:Landroid/arch/lifecycle/f;

.field U:Landroid/arch/lifecycle/f;

.field V:Landroid/arch/lifecycle/e;

.field W:Landroid/arch/lifecycle/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/j",
            "<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Boolean;

.field f:I

.field g:Ljava/lang/String;

.field protected h:Landroid/os/Bundle;

.field i:Landroid/support/v4/app/e;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field protected s:Landroid/support/v4/app/k;

.field public t:Landroid/support/v4/app/i;

.field u:Landroid/support/v4/app/k;

.field v:Landroid/support/v4/app/l;

.field w:Landroid/arch/lifecycle/p;

.field x:Landroid/support/v4/app/e;

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/g/l;

    invoke-direct {v0}, Landroid/support/v4/g/l;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/g/l;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    iput v1, p0, Landroid/support/v4/app/e;->f:I

    iput v1, p0, Landroid/support/v4/app/e;->j:I

    iput-boolean v2, p0, Landroid/support/v4/app/e;->G:Z

    iput-boolean v2, p0, Landroid/support/v4/app/e;->M:Z

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    new-instance v0, Landroid/arch/lifecycle/j;

    invoke-direct {v0}, Landroid/arch/lifecycle/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->W:Landroid/arch/lifecycle/j;

    return-void
.end method

.method private R()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    new-instance v2, Landroid/support/v4/app/e$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/e$2;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/g;Landroid/support/v4/app/e;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/g/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->X:Landroid/support/v4/g/l;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/g/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->X:Landroid/support/v4/g/l;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Landroid/support/v4/app/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method public static j()V
    .locals 0

    return-void
.end method

.method public static k()V
    .locals 0

    return-void
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method public static o()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static p()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static q()V
    .locals 0

    return-void
.end method

.method public static w()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->j:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->j:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final B()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->k:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final C()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->l:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->B()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->l:Ljava/lang/Object;

    goto :goto_0
.end method

.method final D()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/e$c;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/e$a;->q:Z

    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v1, v1, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    iget-object v2, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput-object v0, v2, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    move-object v0, v1

    goto :goto_0
.end method

.method final E()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->r()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->n()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_3
    return-void
.end method

.method final F()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->s()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->o()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_3
    return-void
.end method

.method final G()Landroid/support/v4/app/e$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/e$a;

    invoke-direct {v0}, Landroid/support/v4/app/e$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    return-object v0
.end method

.method final H()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->d:I

    goto :goto_0
.end method

.method final I()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->e:I

    goto :goto_0
.end method

.method final J()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->f:I

    goto :goto_0
.end method

.method final K()Landroid/support/v4/app/z;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->o:Landroid/support/v4/app/z;

    goto :goto_0
.end method

.method final L()Landroid/support/v4/app/z;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->p:Landroid/support/v4/app/z;

    goto :goto_0
.end method

.method final M()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->a:Landroid/view/View;

    goto :goto_0
.end method

.method final N()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->b:Landroid/animation/Animator;

    goto :goto_0
.end method

.method final O()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->c:I

    goto :goto_0
.end method

.method final P()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->q:Z

    goto :goto_0
.end method

.method final Q()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->s:Z

    goto :goto_0
.end method

.method public final a()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput p1, v0, Landroid/support/v4/app/e$a;->e:I

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput p2, v0, Landroid/support/v4/app/e$a;->f:I

    goto :goto_0
.end method

.method final a(ILandroid/support/v4/app/e;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/app/e;->f:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/e$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/app/Activity;

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Landroid/support/v4/app/e;->f:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    return-void
.end method

.method final a(Landroid/support/v4/app/e$c;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput-object p1, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v4/app/e$c;->b()V

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/e$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a_()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/e;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method final b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/e$a;->d:I

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->c(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget v1, v1, Landroid/support/v4/app/k;->l:I

    if-lez v1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->l()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->q:Z

    new-instance v0, Landroid/support/v4/app/e$3;

    invoke-direct {v0, p0}, Landroid/support/v4/app/e$3;-><init>(Landroid/support/v4/app/e;)V

    iput-object v0, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    iput-object v1, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->a()Landroid/arch/lifecycle/c;

    iget-object v0, p0, Landroid/support/v4/app/e;->W:Landroid/arch/lifecycle/j;

    iget-object v1, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/j;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v1, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    goto :goto_0
.end method

.method final b(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/e$a;->s:Z

    return-void
.end method

.method final c(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/e$a;->c:I

    return-void
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/e;->R()V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v2, p0, Landroid/support/v4/app/e;->v:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/k;->a(Landroid/os/Parcelable;Landroid/support/v4/app/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->v:Landroid/support/v4/app/l;

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->l()V

    :cond_1
    return-void
.end method

.method final c()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/e;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public final e()Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/f;

    goto :goto_0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/content/res/Resources;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/e;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    :cond_0
    iput v1, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->b(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Landroid/support/v4/app/e;->S:Z

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method final g(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->d(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    :cond_2
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/e;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/e;->F:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/e;->F:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->d()V

    :cond_0
    return-void
.end method

.method final l()Landroid/view/LayoutInflater;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->c()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/support/v4/app/e;->R()V

    iget v1, p0, Landroid/support/v4/app/e;->b:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->o()V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-static {v0, v1}, Landroid/support/v4/h/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/support/v4/app/e;->R:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/support/v4/app/e;->R:Landroid/view/LayoutInflater;

    return-object v0

    :cond_2
    iget v1, p0, Landroid/support/v4/app/e;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->n()V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/v4/app/e;->b:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->m()V

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/support/v4/app/e;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->l()V

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->e()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/f;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/e;->y:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->e()Landroid/support/v4/app/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/f;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->g:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final y()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->h:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->x()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final z()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->i:Ljava/lang/Object;

    goto :goto_0
.end method
